Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC43358A49
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 18:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B466EB79;
	Thu,  8 Apr 2021 16:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1A56EB79
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 16:56:11 +0000 (UTC)
IronPort-SDR: qdqmKeTIhthl7J0UhcUCexN6/Xh/cGlZFDnzATFkf6ybntPIcGQkR0jQYE5nqiyudnv/pxQaWm
 g/nj+4n0IrBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="190386199"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="190386199"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 09:56:10 -0700
IronPort-SDR: a8MADxb3Ms9DdyTFjGVgq2fXsYUZ2SqdPL30GmYgSsIOQUf9DeFQwbeMtB4VClucjaUfAgm2LA
 R5XBUFZo3kfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="415857545"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 08 Apr 2021 09:56:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Apr 2021 19:56:06 +0300
Date: Thu, 8 Apr 2021 19:56:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <YG81picGSzpb84fU@intel.com>
References: <20210402082317.871-1-tiwai@suse.de> <YG3fJq6wkeQGafSS@intel.com>
 <s5ho8eq824w.wl-tiwai@suse.de> <YG4kEEqExSUjA0kh@intel.com>
 <s5hk0pd8b9l.wl-tiwai@suse.de> <s5h1rbk7n29.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5h1rbk7n29.wl-tiwai@suse.de>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix invalid access to ACPI
 _DSM objects
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 08, 2021 at 06:34:06PM +0200, Takashi Iwai wrote:
> On Thu, 08 Apr 2021 09:51:18 +0200,
> Takashi Iwai wrote:
> > =

> > On Wed, 07 Apr 2021 23:28:48 +0200,
> > Ville Syrj=E4l=E4 wrote:
> > > =

> > > Oh, could you ask the bug reporter to attach an acpidump to the
> > > bug? Might be good to have that stuff on record somewhere if/when
> > > someone wants to actually figure out what's going on here.
> > =

> > OK, I'll ask.
> =

> Available at
>   acpidump: https://susepaste.org/59777448
>   hwinfo: https://susepaste.org/86284020

Those will apparently expire real soon. I took local copies out
of morbid curiosity, but that's not going to help anyone else =

in the future. I rather wish bug reporting tools would flat out
refuse to accept any pastebin links.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
