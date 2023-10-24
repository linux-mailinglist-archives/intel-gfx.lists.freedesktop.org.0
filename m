Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FFD7D4F70
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6FD10E359;
	Tue, 24 Oct 2023 12:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE8710E359
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698149230; x=1729685230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2+QtlFS+QIIvrE0Omwh0sAEGZBHlyikNgrH3MGXPL8k=;
 b=awmwrCOd4KOABV9CzaOmL6srWr/ojfOnG2pKozC9ZzHmEGOGYRMN142g
 HycFp6oVOR2kSh+3O6jSXy76Tlf1cCt4Rkq3xf4IWG2UX40sdV2lDqFUK
 esQUjRVMw4mLtixarvt5IvxbOWp/DLSQT8gd9IY5f2Ginnkm6aoDqyJBc
 y5XXM7s2pQPyTpJ1R4Lz2ygOzFrPK+YDst45W05R4hScsgcNyTQZ3VZTf
 WdJXouzvAw8Mqo4OIwe4EqfcX2/zKJYFUm6yo0kX8hqT3Jq9dIIBTfEDj
 BD2H1/FH3yf0DWvjrDxX381yY/5ry+ZkfKNaaYXU1614a5RqPQH6oKCTF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="453500780"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="453500780"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:07:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="1089815877"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="1089815877"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:07:08 -0700
Date: Tue, 24 Oct 2023 14:07:05 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Message-ID: <ZTezaaWGMAQ6NO6M@ashyti-mobl2.lan>
References: <20231019182836.3761023-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231019182836.3761023-1-umesh.nerlige.ramappa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Check if pmu is closed before
 stopping event
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

Hi Umesh,

On Thu, Oct 19, 2023 at 11:28:36AM -0700, Umesh Nerlige Ramappa wrote:
> When the driver unbinds, pmu is unregistered and i915->uabi_engines is
> set to RB_ROOT. Due to this, when i915 PMU tries to stop the engine
> events, it issues a warn_on because engine lookup fails.
> 
> All perf hooks are taking care of this using a pmu->closed flag that is
> set when PMU unregisters. The stop event seems to have been left out.
> 
> Check for pmu->closed in pmu_event_stop as well.
> 
> Based on discussion here -
> https://patchwork.freedesktop.org/patch/492079/?series=105790&rev=2
> 
> v2: s/is/if/ in commit title

Please, next time version your patches. This is the third time
you send this, but there is only one 'v2' changelog.

> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

With Tvrtko's tags:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
