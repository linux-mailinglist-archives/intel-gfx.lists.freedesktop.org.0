Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA1697E3B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D509610E135;
	Wed, 15 Feb 2023 14:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722AF10E135
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470821; x=1708006821;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NP0IGyfRTlKSyu8CJza0Yn/cSh2ZEApypi7tT0pljUc=;
 b=hYTuWw7cRrPmgxvWj4GNzFR+Me2uYqE0epS0YCmjLlqSyBi02gkM1M6S
 FcP9ajpxWSW2QqDk23XQaFnDU2zspebmJVMnL1RAgohFmFilNgYBiweQ7
 ETbeLeW3tGvnHWWi/wC5BXPorCyrhjjx95Ujf8Ty2GDK6G3cKBsyrzM7Y
 NVbwoKmd1+vX5LxkaDrRLpE1mKjVezb59TtFMniVyLXIAcgZp3KPvHQG4
 sLkk6w4iq8DsMkXHCIjYp4LHBrqjrcdMC2xoPzY6ms4xj1CR7kXryCmzW
 c2dl/Nhr2ZWPPg2lp+Iua4gX21iCPhivklNGfbSn+6jlsTzC74HHFYbiY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="311802699"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="311802699"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:20:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="733296193"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="733296193"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:20:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+zMIV3lTkoeTVOE@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1676317696.git.jani.nikula@intel.com>
 <77c30bfdd258c4e0cf143c93514f94c92f371484.1676317696.git.jani.nikula@intel.com>
 <Y+qjUAe0Y4LTwG67@intel.com> <87r0urqim4.fsf@intel.com>
 <Y+zMIV3lTkoeTVOE@intel.com>
Date: Wed, 15 Feb 2023 16:20:17 +0200
Message-ID: <87cz6bqace.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/wm: move watermark
 sanitization to intel_wm.[ch]
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

On Wed, 15 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Feb 15, 2023 at 01:21:39PM +0200, Jani Nikula wrote:
>> On Mon, 13 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Mon, Feb 13, 2023 at 10:00:00PM +0200, Jani Nikula wrote:
>> >> Move the generic sanitize_watermarks() to intel_wm.[ch] and rename as
>> >
>> > It's not generic though. Only the ilk_ stuff uses it.
>>=20
>> Okay, so the caller side requires HAS_GMCH() and the callee side
>> requires .optimize_watermarks !=3D NULL. That indeed leaves us with PCH
>> split platforms before display version 9.
>>=20
>> However, the implementation of sanitize_watermarks() seems pretty
>> generic, right?
>>=20
>> I guess the question is, do you suggest moving the whole thing to
>> i9xx_wm.c and specifically not calling it on display 9+, or do you just
>> want the commit message to reflect the above?
>
> What I actually want is to just get rid of it entirely.
> But that would require doing some work on the ilk wm code.
>
> So in the meantime I suppse I'd prefer to hide it away next
> to all the other ilk wm code so that no one gets any more
> confusedby it.=20

Thanks, new version on the list.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
