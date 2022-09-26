Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B805F5EA0F5
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 12:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9475610E2C2;
	Mon, 26 Sep 2022 10:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86FDF10E2C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 10:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664189065; x=1695725065;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=f1DH1umE/iw2UmsI6ERy6b2pt8IOJ18kxSpguML3IIU=;
 b=MfPcYJ85v/FDBg5oHR+5UAZox83CJc7PWlQOEXwWxTDIT8KO46Ew4Hbw
 7hs8Gavx7HWEzm+tfA6WVJW3uZgE44+lT/qmfSQaH559R2guFLGEzlGzh
 s9Wm6iCmCX8g8mimoPlULDwRcup1MhU90112uhEA5oiAEeTbS8Px7N5ST
 BmHN8xBsZFmCHA9EJSSsrIZN+ZGZH866CUZbemeErumwMleaSyNQaVCUB
 wIddBPeagsDwJISkk+xkZhl6Rpy9ckb6DfGkJwdZeaQlfTDGyYot8tBIu
 mXg9B/Zjkb8xpgqPHZLkttWDSHq2UDxz7JZUDv3l+A/p0mqu+DJTmOE39 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="327340657"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="327340657"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:44:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="683481638"
X-IronPort-AV: E=Sophos;i="5.93,345,1654585200"; d="scan'208";a="683481638"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 03:44:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <dd276e8cec82ca39384fd4c85d07b8b3ae90f67e.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-2-ville.syrjala@linux.intel.com>
 <dd276e8cec82ca39384fd4c85d07b8b3ae90f67e.camel@coelho.fi>
Date: Mon, 26 Sep 2022 13:43:48 +0300
Message-ID: <87leq62z6j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915: Drop pointless middle man
 variable
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

On Mon, 26 Sep 2022, Luca Coelho <luca@coelho.fi> wrote:
> On Mon, 2022-09-12 at 14:18 +0300, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> No need for the 'procmon' variable here. Just return the correct
>> thing from the switch statement directly.
>>=20
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>
> This doesn't make any difference in practice, the compiler will very=20
> likely optimize out the procmon variable.
>
> In general, I think I think it's preferable to avoid this kind of
> patches, because they just make git blame a bit harder to interpret.

I think it's nicer to read, ymmv.

>
> Nevertheless, this is certainly not a reason to nack, so:
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

N.b. I've already reviewed patches 1-13. [1]

BR,
Jani.

[1] https://lore.kernel.org/r/87fsgw6bs3.fsf@intel.com

>
> --
> Cheers,
> Luca.
>

--=20
Jani Nikula, Intel Open Source Graphics Center
