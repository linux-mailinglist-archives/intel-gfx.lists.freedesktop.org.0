Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54406589C43
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 15:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3CA997F8E;
	Thu,  4 Aug 2022 13:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD98B97F9B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 13:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659618638; x=1691154638;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=GHlaxh/ZUWbDVACBrd09zAib+riMznyZgeiAX7Gt+pw=;
 b=LGM+kiZZbp2jtYk9j8ztpRbQV/ispdUcMY5/8zY/lglSlBIpMsaSYux2
 H0HARc7bEv7+y9pxbM+/zlMrlMYcN3ev/qev+L6dwihVEIV3iuHQGAoam
 3rtrZIRI3atpoxZdF0q5N2iowwxjPqE6RZ6wsXxhjaxQh/tb4tpi0dTLt
 dlrHSK1i336BA/kt229fNALw8MdRdwI3hj//jpv2OMdhaWJeRI05F1P1A
 fSp0IZveWueo2qeJbU1akkWfjqAMol7Chj764UR0xhK2wYur2G19CMp8m
 OEiQi7Y+/PpHOfNi+tYGSKYn6PAIlEEy9Phu4NhHT9PigHWYNJCMSVQ7A A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="351639691"
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="351639691"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 06:10:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,215,1654585200"; d="scan'208";a="662527788"
Received: from wujunyox-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.120])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 06:10:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87edxwpe8x.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <87edxwpe8x.fsf@intel.com>
Date: Thu, 04 Aug 2022 16:10:34 +0300
Message-ID: <87pmhgnohh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 00/23] Initial Meteorlake Support
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

On Thu, 04 Aug 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 27 Jul 2022, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
>> The PCI Id's and platform definition are posted earlier.
>
> Please don't send patch series that aren't based on drm-tip or depend on
> other patch series. Even if you've sent the PCI ID stuff earlier,
> include all the dependencies in the series you post, to let the CI test
> this, if only to check that it doesn't regress older platforms.

I realize the build failure was something else, and the PCI IDs were
*merged* already, not just posted.

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
