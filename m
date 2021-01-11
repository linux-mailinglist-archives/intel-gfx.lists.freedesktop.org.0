Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B0E2F1EAE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 20:10:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA61F89AFF;
	Mon, 11 Jan 2021 19:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8507D89AFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 19:10:10 +0000 (UTC)
IronPort-SDR: XdT3yvmlzpHkWfkyna39LrpHvoX2Epdgy0YZYn14Q5kFrKw3uiPn7hCwj1s4JAXMwSp9vxu0qC
 eO51MliBNABw==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="174410890"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="174410890"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:10:09 -0800
IronPort-SDR: 3PVDINbffg6RI4QqpjO2kLpON+bYM7pQn5R7wt/AQ/7FYNa/P27zjcaxxQ9JhJvRDjwsWRBZOz
 d/vEDYKw7zjw==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="381116787"
Received: from libresli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.207.39])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:10:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: lyude@redhat.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <875z43yemi.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210108152841.6944-1-jani.nikula@intel.com>
 <e5fd2290fae25fc1167ea6fe91e7060840d0db47.camel@redhat.com>
 <875z43yemi.fsf@intel.com>
Date: Mon, 11 Jan 2021 21:10:03 +0200
Message-ID: <87bldvwar8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/backlight: fix CPU mode backlight
 takeover on LPT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 08 Jan 2021, Lyude Paul <lyude@redhat.com> wrote:
>> Reviewed-by: Lyude Paul <lyude@redhat.com>
>>
>> Let me know when you've pushed this upstream and I'll go ahead and send out a
>> rebased version of my backlight series.
>
> Pushed, thanks for the review.
>
> I'm hoping to do more review of the series today, so please hold off on
> actually sending the rebased version for a bit longer.

Done, go ahead!

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
