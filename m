Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5B37D4B9C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 11:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA3310E301;
	Tue, 24 Oct 2023 09:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F80B10E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 09:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698138656; x=1729674656;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NhiextLkErs42qHeuVCrUDh1ybmraaW81X3dUsW9CkM=;
 b=EzFUtpCvvJ5wLy7qEJdUSY52KbGAjb8oL8zRdWEVMSXSZfrHCG237BOX
 un4XWuXn8oLk4yEj4y9vF/5kdzx1Vm0EQSBx9p8Q0j53764pOKBwqWcyX
 BJT4RTsvNH+3Z7DDc590DSlFjm0Y0gex1IOMLVTLpi/4yyKP4jtkvKtcS
 PNLi6q9+OE3B2OXD7+rVEMBovW3G8r9LYO4tTXX9Ig0h2OvAxq/6iIwxo
 uo1zGgLvt6VWP4BEaKwy6P1iotMNyc79dz3mteVsKkseMPkXcLngNVzvI
 GXF0Gsxo7eDbRt/L75ONKAEXtRAMV5WJxK6b91a9euLkp1vVjphygFZaK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="418142621"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="418142621"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 02:10:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="875003973"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="875003973"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 02:10:53 -0700
Date: Tue, 24 Oct 2023 11:10:51 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZTeKG8S1moLtfsGh@ashyti-mobl2.lan>
References: <20231023-wabb-v4-0-f75dec962b7d@intel.com>
 <20231023-wabb-v4-1-f75dec962b7d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023-wabb-v4-1-f75dec962b7d@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915: Reserve some kernel space
 per vm
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Mon, Oct 23, 2023 at 10:21:45PM +0200, Andrzej Hajda wrote:
> Reserve one page in each vm for kernel space to use for things
> such as workarounds.
> 
> v2: use real memory, do not decrease vm.total
> v4: reserve only one page and explain flag
> 
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
