Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C36B962AF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFCF10E628;
	Tue, 23 Sep 2025 14:15:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQwLtBh1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD42510E62A;
 Tue, 23 Sep 2025 14:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758636956; x=1790172956;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=l+XCE9STEC2YSm3wD0/pJMPJy8BAw3Wuw/2qtp9MbJ8=;
 b=kQwLtBh1jszm+4ScZmgk8Dj3dZohnkzpWVoniXMxAudNEo0fh3M8EPHy
 N2gSvQZq8kA2DEg0Zh6v2LahhE1jg+wt1r3g29bOdnnK7wjHWfqeE55Bg
 tm+gNJ+dI1QurIVRzWdbLAAMHhWwCTjR7ZThioAP1aM8eyHipnpySwpJu
 4mmz83vYaTy6zpMy7QA6gPN8ecm8xA0YCt1o2u7hYvVwTFAg9EmROaIPY
 qFoeSpsUc8KpRR6adNI/kCAX8skxO3XQsT3mHaDCnI+KeJ8iS7mlya0kT
 ZvWCY6dXz9hWI2O2SpBxEQdfsdsWceQxeIm8EYsmPb3GEEFXA+utXs7jn g==;
X-CSE-ConnectionGUID: XVdrzQLUQjqJ4yWSTwHJbA==
X-CSE-MsgGUID: X25bEnZ+SFeLWj+VL3BFSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60834144"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60834144"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:15:56 -0700
X-CSE-ConnectionGUID: YtG18jmaReqtPB+0oWqawA==
X-CSE-MsgGUID: 7P3IzcKaSX+AtVL/U0A9Fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176717413"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.94])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:15:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/irq: split ILK display irq handling
In-Reply-To: <aM1IOabvrlmkzQsk@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1758275448.git.jani.nikula@intel.com>
 <f549e6d2a50bcaf0a4ca559f867828357f3927aa.1758275448.git.jani.nikula@intel.com>
 <aM1IOabvrlmkzQsk@intel.com>
Date: Tue, 23 Sep 2025 17:15:52 +0300
Message-ID: <b11c1170e758467a3637fd62545b7b65101417be@intel.com>
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

On Fri, 19 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Sep 19, 2025 at 12:51:49PM +0300, Jani Nikula wrote:
>> +bool ilk_display_irq_handler(struct intel_display *display, u32 de_ier,=
 u32 sde_ier)
>> +{
>> +	u32 de_iir;
>> +	bool handled =3D false;
>> +
>> +	de_iir =3D intel_de_read(display, DEIIR);
>> +	if (de_iir) {
>> +		intel_de_write(display, DEIIR, de_iir);
>> +		if (DISPLAY_VER(display) >=3D 7)
>> +			_ivb_display_irq_handler(display, de_iir);
>> +		else
>> +			_ilk_display_irq_handler(display, de_iir);
>> +		handled =3D true;
>> +	}
>> +
>> +	intel_de_write(display, DEIER, de_ier);
>> +
>> +	if (sde_ier)
>> +		intel_de_write(display, SDEIER, sde_ier);
>
> Maybe the re-enable should be its own function just to make
> things a bit less confusing?

With that I can actually drop patch 5/6.

BR,
Jani.


--=20
Jani Nikula, Intel
