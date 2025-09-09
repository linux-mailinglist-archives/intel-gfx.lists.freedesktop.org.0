Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1A6B4A526
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 10:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760AC10E651;
	Tue,  9 Sep 2025 08:22:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIDIipj6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33CB010E650;
 Tue,  9 Sep 2025 08:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757406166; x=1788942166;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=6P76TH7rnCVKKTMTyS+1ai4RvHbvt7VPfT1ibSEqKqM=;
 b=SIDIipj66dtLI5sPgmMyJVNFnsqPKu/sHOMNZ3HFZ1byiSamZumx0ih3
 TVLeetQmaWzHFrJUUEstE3JPncpmN/n+T6oLJzXJsGfwNSOBDFcHTkRJ3
 01X5ugwqRfzCBecd7QBW/empXwswtJD7gHguSk/BlJpkDjTSLuwdXWGQ1
 VKXmP+ljo6SZzfW7o0jtcrv3mWaLJ8cRD3NvjRm0YpQHbi4n8Gnd2a+9b
 uvdhmMhF+Z/jDnrwhfQ6xy5HubKwnbU3SkyK6JaZokneEVfLTjmjAG4uQ
 5whmxHfMT/5mqBjNArt1b+Ckj+8VFC/p+hhuAt5iR39j+P7YF7fT51qmg g==;
X-CSE-ConnectionGUID: S0Hajc0LR5ammZifoqjiaQ==
X-CSE-MsgGUID: MkZiFMd5S22NxKRgXmdn3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="69937631"
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="69937631"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 01:22:45 -0700
X-CSE-ConnectionGUID: jaDdCYtUQT6oamzEG45aSA==
X-CSE-MsgGUID: qL541S5zRlWwsizAgZHAMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,250,1751266800"; d="scan'208";a="204010798"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.247])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 01:22:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: add intel_display_device_present()
In-Reply-To: <aLrJLuvHzyW-kjT-@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250903090408.3492875-1-jani.nikula@intel.com>
 <aLrJLuvHzyW-kjT-@intel.com>
Date: Tue, 09 Sep 2025 11:22:41 +0300
Message-ID: <de15cab0effcd479aac174af603a24d4ae3d2a8a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 05 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 03, 2025 at 12:04:08PM +0300, Jani Nikula wrote:
>> Add a proper function for display && HAS_DISPLAY(display) to hide
>> indirect struct intel_display access via the macro from a number of
>> places outside of display. This makes struct intel_display * an opaque
>> pointer in these places. All HAS_DISPLAY() usage is now constrained
>> within display.
>
> Looks all right. Though a lot of code where this gets used really
> shouldn't exist outside the display code in the first place. But
> cleaning all that up is going to take some effort.

Agreed.

> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed to din, thanks for the review.

BR,
Jani.


--=20
Jani Nikula, Intel
