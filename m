Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D806BA44588
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD9A10E742;
	Tue, 25 Feb 2025 16:11:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="adV90lh5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B7910E742
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2025 16:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740499890; x=1772035890;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=49aepDrdQDQC1xjmyZhLH1c90FOD+16Mgx/mXDD03ZM=;
 b=adV90lh5O9X8jDKO0qWLYbjLI3cp4xxCEyQQ/N8+CKlhbQaoJ9WT/9wQ
 XYVXTT9jeHv3FasFBbZ4MsTDV4cEq55nX0xeRK5YUs3ufrYrMhBjMD7wY
 6gqydfWvQKd6fzUWLoY+SeTn0dOgtaPY4FTw1F/98LgA6QF99SpTFczrM
 sQ3XIH89pQfIAGvFQqnjgVIeFj/5udwpmd5ytpvTqUX6GZKx9jUEzBQ+e
 j+GPaHcmRGdsohuWSsJh1GYk8V7euvJdSRaSyjFYk8S7a6oTxBlMOz6IZ
 J26y/EhmoIE6ktJ1qJX5UzXca0KUj4vYyZTSlBAh2FlPFmPR8gNsxoFMS w==;
X-CSE-ConnectionGUID: Im+n07c4R5Opv9cM3+wVlg==
X-CSE-MsgGUID: R3/ptMkrQpKhUZ7MebJRyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41016979"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41016979"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:11:30 -0800
X-CSE-ConnectionGUID: +9DnNaLHSmSkycKuSCC81Q==
X-CSE-MsgGUID: A+lNa22iQROU+BbHnADk8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="139673734"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:11:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915: Use REG_BIT() & co. for BDW+ EU/slice
 fuse bits
In-Reply-To: <2ueianfplrtjermhu47wufhrmws355ycleyarwagcxvyiqk5ic@t2gn7juxcqph>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-10-ville.syrjala@linux.intel.com>
 <Z7xHVpOEvu7tCn6a@ashyti-mobl2.lan> <87bjuq796e.fsf@intel.com>
 <2ueianfplrtjermhu47wufhrmws355ycleyarwagcxvyiqk5ic@t2gn7juxcqph>
Date: Tue, 25 Feb 2025 18:11:24 +0200
Message-ID: <87frk257ir.fsf@intel.com>
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

On Tue, 25 Feb 2025, Andi Shyti <andi.shyti@kernel.org> wrote:
> Hi Jani,
>
> On Tue, Feb 25, 2025 at 09:52:41AM +0200, Jani Nikula wrote:
>> On Mon, 24 Feb 2025, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> > Hi Ville,
>> >
>> > On Wed, Feb 12, 2025 at 01:19:37AM +0200, Ville Syrjala wrote:
>> >> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >>=20
>> >> Convert the BDW+ EU/slice fuse bits to the modern REG_BIT()/etc.
>> >> style.
>> >
>> > using REG_BIT() and co. doesn't alway make it more readable. In
>> > some of the cases below I would have preferred not to use it.
>>=20
>> Interesting. I read through the patch and I thought all of it was
>> good. Care to elaborate?
>
> yes you're right, I should have given an example, but I had
> already edited the e-mail and I was lazy to get it back.
>
> In any case, this is an example:
>
> -       s_en =3D intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE) &
> -               GEN11_GT_S_ENA_MASK;
> +       s_en =3D REG_FIELD_GET(GEN11_GT_S_ENA_MASK,
> +                            intel_uncore_read(uncore, GEN11_GT_SLICE_ENA=
BLE));
>
>
> The removed line to me is clearer than the added line.

I suppose clarity could be improved with:

	val =3D intel_uncore_read(uncore, GEN11_GT_SLICE_ENABLE);
	s_en =3D REG_FIELD_GET(GEN11_GT_S_ENA_MASK, val);

but in general I think REG_FIELD_GET() is better than just val & mask,
because the former handles shifting.

(For the record I'm not suggesting separating the read in this patch.)

> I'm not saying that it's not good (otherwise I wouldn't have
> r-b'ed it), I'm just saying that not always using the REG_*
> macros makes the code clearer.
>
> For consistency with the rest of the patch is anyway fine.

Agreed.


BR,
Jani.


>
> Thanks,
> Andi

--=20
Jani Nikula, Intel
