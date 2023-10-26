Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAB47D8348
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 15:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C84210E7D2;
	Thu, 26 Oct 2023 13:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1831410E7D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 13:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698325705; x=1729861705;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9Tk6KYVc0LzvVpNplkCkkmzXEa08pdamzODzCvZ0AMk=;
 b=ZEl/ydAEYf2DiZ6/Xm+joLBW2BQFRSmyU2W+JttZQEdOlROnktsQvgz8
 JIEKj+9qlnBAi3tk484TQPYxZLxq0XHehwIgyhBcLkhdCwBeMjYA0NjHd
 ILmBFKwzfpfkJFuVbx3wY7v0hfKKYuUbyNO1mJ86j8rw4UL2PFMGhTxjL
 WAysTNJEdfM6XCJw1b90PTDcSEfn/lBJ9rpDWxBbq8xgkyagDQwZPzFm2
 I+uH6E1RW40+r7yA6U2Vww4T2+DVDSzs7g1YRuy+tZAbrX5M5BDeYAspb
 wOmAMVdlHsoT26BimhdGoA71kOvGmR8DOpFuJhf16YmUB6mDvjTXzevPZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="6164302"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="6164302"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 06:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="794200242"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="794200242"
Received: from kacperbu-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.49.190])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 06:08:01 -0700
Date: Thu, 26 Oct 2023 15:07:58 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
Message-ID: <ZTpkros7Z6rOsLTF@ashyti-mobl2.lan>
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

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
