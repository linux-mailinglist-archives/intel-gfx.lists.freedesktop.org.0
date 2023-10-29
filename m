Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B927DABF3
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Oct 2023 11:03:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6B710E09E;
	Sun, 29 Oct 2023 10:03:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6859910E09E
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Oct 2023 10:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698573824; x=1730109824;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Eacjoc+a/i6xrDcJ2N9CgwYJ/MPyk7Kay7bgxRyaEcU=;
 b=eaUh95kLnE2n8fN8UUxE4CJhVueJC7gJJ+prY+74OZ72qa7Liubxtt+W
 HyV+hM10QXS5t0RDn4Ifnxw424856sXksIlJwFNjQKO7c9TtJ1hT9YnKi
 s9pyjyfczlT5M9qpnpoq/HDSj2cEEgxm7YnZu5qD1I2OkpAy7WL+uAZub
 +HthrSB7s39WAQOqEHU5uZVenCi1xe4rK9I9onO4jsar51L6tlXLLveUI
 Bruk0xKDOdqNiHasEJ7YL9Np3ZtqCb3PhQMX7NeUhJu6kHYg7ECGejPKq
 92fpUnggtz0J5pd/TYjWvvyXt34wS0Tw+sCEfyQKBfOo/x5ZXx2bSAApM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="6573325"
X-IronPort-AV: E=Sophos;i="6.03,261,1694761200"; 
   d="scan'208";a="6573325"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 03:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10877"; a="753533747"
X-IronPort-AV: E=Sophos;i="6.03,261,1694761200"; d="scan'208";a="753533747"
Received: from mmocanu-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.41.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 03:03:41 -0700
Date: Sun, 29 Oct 2023 11:03:38 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Message-ID: <ZT4t-kRN18CAC9Sh@ashyti-mobl2.lan>
References: <20231026105623.480172-1-gilbertadikankwu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231026105623.480172-1-gilbertadikankwu@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove unncessary {} from
 if-else
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

Hi Gilbert,

On Thu, Oct 26, 2023 at 11:56:23AM +0100, Gilbert Adikankwu wrote:
> Fix checkpatch.pl error:
> 
> WARNING: braces {} are not necessary for any arm of this statement
> 
> Signed-off-by: Gilbert Adikankwu <gilbertadikankwu@gmail.com>

the errors from CI are obviously unrelated to this patch.

Applied in drm-intel-gt-next.

Andi
