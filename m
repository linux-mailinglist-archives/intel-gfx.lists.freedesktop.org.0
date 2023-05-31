Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F27F0717D3A
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 12:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A959010E4A8;
	Wed, 31 May 2023 10:34:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2386A10E4A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685529248; x=1717065248;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=KLD1QsPlTBo6skkcvDsLhgLyj7suT/wsuKRo06h/QSw=;
 b=P+NfK9SuHQ7Y5XHIxChSavNXhuuJ2TbOcP5Z2Jhse4C/murFMoVYOb0N
 AXOlpL2kTnQzFj9MI3S7U7lIrOBZI4Ihg9H34hPQXmy474eJahZoDRnB1
 XRAcdmWkCdnGmpDs19mwSTfSdKXYuf/rvdz5Mt+c7nuhU2YWslP7aomg3
 iskukNGjBIfT5l91s7C/DA43Iby7AfU4Vy3g43ruj3r6S7sOo08WDOzym
 QZfALP1tBAj+JI98+bqgQ74+ELT9Y1QP4LKz56xT0+IXRqaqRZPhQq/8+
 CZ99J6AKoode1OGdQ8bPwRmQavQEyw0jc97YRngFmj1N5h2EL3gcQOOm/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="335544037"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="335544037"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 03:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="706824093"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="706824093"
Received: from itaraban-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.19])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 03:34:03 -0700
Date: Wed, 31 May 2023 12:33:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
Message-ID: <ZHcil9Bb0vSpH6TK@ashyti-mobl2.lan>
References: <20230517132230.1102553-1-tejas.upadhyay@intel.com>
 <ZHZlJFaIZNOTmFVN@ashyti-mobl2.lan>
 <SJ1PR11MB6204E0F351F3BDA0727E71EA81489@SJ1PR11MB6204.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6204E0F351F3BDA0727E71EA81489@SJ1PR11MB6204.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Add workaround 14016712196
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

> > 
> > I'm wondering, though, if we can put both dummy pipe and real pipe in the
> > same command and advance the ring only once at the end... nevermind.
> 
> As we have conditional ring increments, we cant decide ring size at start in ring begin for whole bunch at once. Though double checking.

yes, you add it conditionally. Check, e.g., the control:

	if (!HAS_FLAT_CCS(rq->engine->i915))
		count = 8 + 4;
	else
		count = 8;

In the second if block. You are basically doing the same thing.

But I'm not strong with this.

Andi
