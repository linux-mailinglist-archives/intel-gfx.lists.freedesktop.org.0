Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B825DB0905F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 17:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A9710E294;
	Thu, 17 Jul 2025 15:17:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M4Hncn4n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2F010E294
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 15:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752765420; x=1784301420;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=s87QiCQFPSlI8paUhqxocuviQtFSK1WwxE/B3+yqtRU=;
 b=M4Hncn4n6tMswFMD8RNEJdYSsNxWMj8khs50yoJeirxVADxR9d50oytv
 mvp8OnNLe15nYEI7xLAsc7ODEcoYjD80O1pVq3m9n5cNI5t9QI2rXgrh7
 nZ7IOwpu+q1wtUjEn9qXqSrEsuqlKAnOLpY9IiUe0EAd6T4vjU1vjbTmQ
 1v06UF1eL5xjpQ86GZg0Ia8ZMJG0jVwGHcafRpVKvaXw65YRAIvsI3ydo
 EoHwo/LH+jPvh9D+hE4awp/M5e2ZuphD8wNk83/gVUuXSBWF+zt76zsad
 IxKVu0EzumI8BtO8PYsN64MVubTI4gmrYPq/6Hg9x3FXoEMGxhnyacDaM w==;
X-CSE-ConnectionGUID: 7itwo1VMSqihMk/+/oRQbQ==
X-CSE-MsgGUID: m85RzS1MREm8hn4MSlNplw==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="58816056"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="58816056"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 08:17:00 -0700
X-CSE-ConnectionGUID: 8TxZFLN6R7mQIC2b4L7RXQ==
X-CSE-MsgGUID: mjR5avBYTn+HJLhTOlVB+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="181524112"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.171])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 08:16:57 -0700
Date: Thu, 17 Jul 2025 17:16:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com,
 andi.shyti@linux.intel.com
Subject: Re: [PATCH v2 3/3] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
Message-ID: <aHkT5cxkVQNbbW6N@ashyti-mobl2.lan>
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-4-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-4-sebastian.brzezinka@intel.com>
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

Hi Sebastian,

let's start over...

On Thu, Jul 17, 2025 at 12:38:56PM +0000, Sebastian Brzezinka wrote:
> The value 4095 is most likely intended to represent PAGE_SIZE - 1.

most likely? We need to be sure :-)

Andi
