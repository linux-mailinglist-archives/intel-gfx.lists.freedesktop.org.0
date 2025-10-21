Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B81DEBF547A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 10:36:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6067D10E598;
	Tue, 21 Oct 2025 08:36:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GnD7W1lC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C11A10E593;
 Tue, 21 Oct 2025 08:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761035779; x=1792571779;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6/iHwHL2VndExd1l0j80JaUkfyr4bBwlfE/bIRAlUbk=;
 b=GnD7W1lCx3d0OLD6IM93+7XK6F5XEX8gGs+wEmYgMjQ9Hgved5rFqfIA
 JdSL8dsHmfvu8kb9qV5aPEjamNmNIsNtRgBpbaAdaCrXXUQJ3zURIVLIG
 yA5LGcbSBjsIlf7xaiEpnQHyNwsZeVI6vDNNm0wqqYl2fxmbVFFFlCDZ+
 eOvmrzYiQovTqjLcIDPFq9bpodezG4vR2BV0pLyEQHLy1g8RQT47WFtfP
 kQNyqMEIyJRXzb2JaIcTGg79+rk+0JgKFAeYwfY0US5rER/9GaX8Yo37G
 hkti7ksDlMpO1/ru+yZ/p4HQHrfKIs9DTPmZUQ3rmkQLPFeWfdCyIvYbA w==;
X-CSE-ConnectionGUID: Ui0HQt7oQfOG4Inl27x+eA==
X-CSE-MsgGUID: 0/+/Fft2SrKVpsBMBN0Vng==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63078229"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63078229"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 01:36:19 -0700
X-CSE-ConnectionGUID: 2EGLKywKR36VWqmYeh5LOQ==
X-CSE-MsgGUID: wLsU1StWRq6e8b7lXlQWZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="207214803"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 01:36:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 29/32] drm/i915/display: Handle dedicated external ports
 in intel_encoder_is_tc()
In-Reply-To: <176054550462.3168.930912579291937601@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-29-d2d1e26520aa@intel.com>
 <bc0b111384b7c28187aa5e7fef1cd39718ab1f75@intel.com>
 <176054550462.3168.930912579291937601@intel.com>
Date: Tue, 21 Oct 2025 11:36:11 +0300
Message-ID: <fbe88673f719ed7dd8ae3ae5b63212ff48cd8bed@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-10-15 12:33:31-03:00)
>>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> @@ -1863,6 +1873,13 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder)
>>>  {
>>>          struct intel_display *display = to_intel_display(encoder);
>>>  
>>> +        if (intel_encoder_is_dig_port(encoder)) {
>>> +                struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>>> +
>>> +                if (dig_port->dedicated_external)
>>
>>Why go through all the trouble of duplicating the "decicated external"
>>information in the digital port, when you already have encoder
>>available, and can just use intel_bios_encoder_is_dedicated_external()
>>right here?
>
> I believe the last paragraph of the commit message explains the why.
> Are you suggesting that we handle the lifespan issue right in this
> series instead?
>
> Using intel_bios_encoder_is_dedicated_external() my first approach, but
> then we were hit with an oops because the VBT data was not available
> anymore in the driver unbind path.

Ugh. I think this deserves a comment, perhaps accompanied with a FIXME,
not just a mention in the commit message.

BR,
Jani.


-- 
Jani Nikula, Intel
