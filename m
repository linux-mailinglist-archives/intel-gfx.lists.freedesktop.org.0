Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D050738299
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7988010E44F;
	Wed, 21 Jun 2023 12:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7BC010E44F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687349488; x=1718885488;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3zw0bU6Y5gz28Z78i6jVh4KgWcmm/D2lx7A6XAbocuE=;
 b=labdMsjm6hVLxcpEaIo6L8mEIP79zZapZm1JFfmMx6WKUIg7+khRO6Wc
 Csq2A3TvqcEnP6EYOSSvf+peOYMmyVV65bJ9gD1Iqy8Ff0t4AszE0RLeq
 jNjB6dbyMjg92rhmKe+s7rK4K44vMoXoXJkBFoBDZzllqMDPWbfOYnW6G
 EYqJLlKLqZNhFJyRLRXfnAf/Sx/w09zNQLVVa/ltagWimh00DYhL1tnFJ
 7YAfgSCIsaqBLzZk5SLLRPvnJJPjddTz7HCM5XtPxCiU8wdLTIToiQ9Hj
 uV6Qg1qJwcfcX27MRrAiRRFFQarQo18zu2ZNOuJT2TDzLmNXdo3BcP1YH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="349884173"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="349884173"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:11:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="827410146"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="827410146"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:11:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Simon Ser <contact@emersion.fr>
In-Reply-To: <AE4nqoLosqykHVnfupxM4jHs34gh4RJWeMO2INTKyFn2L0uz3HFk7SYg6_8UyU11PL5eebf7mbX9Vphty0zBhe68mMuwTOtYeHNm1nPlx84=@emersion.fr>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230620181203.272076-1-contact@emersion.fr>
 <87ilbh2f7y.fsf@intel.com>
 <AE4nqoLosqykHVnfupxM4jHs34gh4RJWeMO2INTKyFn2L0uz3HFk7SYg6_8UyU11PL5eebf7mbX9Vphty0zBhe68mMuwTOtYeHNm1nPlx84=@emersion.fr>
Date: Wed, 21 Jun 2023 15:11:23 +0300
Message-ID: <87fs6l2exg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Jun 2023, Simon Ser <contact@emersion.fr> wrote:
> On Wednesday, June 21st, 2023 at 14:05, Jani Nikula <jani.nikula@intel.com> wrote:
>
>> > - if (changed)
>> > + if (hweight32(changed) == 1)
>> > + drm_kms_helper_connector_hotplug_event(first_changed_connector);
>> 
>> What if more than one connector share the same hpd pin?
>
> Ah, I did not believe this could happen. I'll rework the patch to
> count the number of changed connectors instead.

A DP++ port is probably the prime example of this, with both DP and HDMI
connectors.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
