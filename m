Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF7D1A9BAC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 13:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808826E18F;
	Wed, 15 Apr 2020 11:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6373F6E18F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 11:08:13 +0000 (UTC)
IronPort-SDR: 7oLrJmRwam/HNMbqlZqBEDHfwIySeakME999IBJQJCpzVEj6BFDzN/HMnq1qbIlDE/GmcsdLiX
 VeP/8fjxF/dA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 04:08:12 -0700
IronPort-SDR: BZXnIPANfxHMleBNJB4CsI9i+SY7oeORZG8Ot6Rkl0q3E5LfykmMiz4msbDZhHz9YaYsws3Ur9
 ay9seH4LZDsA==
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="427397085"
Received: from ssolodk-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.48.37])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 04:08:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158693408746.6629.2921157837798575131@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-16-jani.nikula@intel.com>
 <158693408746.6629.2921157837798575131@build.alporthouse.com>
Date: Wed, 15 Apr 2020 14:08:08 +0300
Message-ID: <87wo6h3t2f.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/17] drm/i915/gt: prefer struct drm_device
 based logging
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Apr 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2020-04-02 12:48:18)
>> Prefer struct drm_device based logging over struct device based logging.
>> 
>> No functional changes.
>> 
>> Cc: Wambui Karuga <wambui.karugax@gmail.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Please, please remove the added [drm] crap.

And what exactly is the problem with that?

I'm increasingly frustrated with the whole logging stuff, and beginning
to regret I got involved with any of it. It's the perfect bikeshed
minefield.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
