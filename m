Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C045B3525
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 12:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB5510EC65;
	Fri,  9 Sep 2022 10:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8ED410EC6A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 10:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662719104; x=1694255104;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:from:subject:to:cc:message-id:date;
 bh=40ExF1L86gWz6KoTvHfGYI69/vgJU/NDtTfBrosP+5U=;
 b=KRs1rjbeFpnL4bKE/2NOl6hme+NBxaGvnyy/pSq8SGY3lUG8zJAzXxuC
 8D0O/H+d7+WzSkx6x47H1TmwpIi55vIoU1U3Q7wzwgHGFHK4sUfU9UCe5
 PwMi4s6UppUMq3oJNYbQHY4lIC9A/AKWBwNQfNRE2g6GdhHSycuGx3nJq
 7ZB7LLi1VKpeJOgkxDW8l5nm3d4FWYFl8Cc8ruJVBlU5+z7JaW3Fvqb0l
 zpTbr5KgijqIq8NMWbRrycHuqdhTc76RjaV9SmLiqFeMn/cHPRH2Hqocl
 UPAe6d7FGofwnkuCATjR7ftV83R9kp/S679av0ceGv5hy/zTPg3wjOgSn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383740523"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="383740523"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 03:25:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677109145"
Received: from fjkilken-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.201])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 03:25:00 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YxDLFWjIllqqh9de@kroah.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
 <YxDLFWjIllqqh9de@kroah.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 David Airlie <airlied@linux.ie>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <166271909777.4265.10724483511179344068@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 09 Sep 2022 13:24:57 +0300
Subject: Re: [Intel-gfx] [PATCH v7 00/15] GSC support for XeHP SDV and DG2
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
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dave, do you have a preference how to deal with the mishap here, shall I do=
 a
force-push to drm-intel-gt-next to correctly record the Acked-by or revert =
and
re-push? Or just leave it as is?

Quoting Greg Kroah-Hartman (2022-09-01 18:09:09)
> On Sat, Aug 06, 2022 at 03:26:21PM +0300, Tomas Winkler wrote:
> > Add GSC support for XeHP SDV and DG2 platforms.
> >=20
> > The series includes changes for the mei driver:
> > - add ability to use polling instead of interrupts
> > - add ability to use extended timeouts
> > - setup extended operational memory for GSC
> >=20
> > The series includes changes for the i915 driver:
> > - allocate extended operational memory for GSC
> > - GSC on XeHP SDV offsets and definitions
> >=20
> > This patch set should be merged via gfx tree as
> > the auxiliary device belongs there.
> > Greg, your ACK is required for the drives/misc/mei code base,
> > please review the patches.
>=20
> With the exception that you all don't know what year it is:
>=20
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Daniele, why were the patches applied without this A-b?

I'm just preparing the drm-intel-gt-next pull request and now it appears
like we're pushing a lot of commits outside of drm without any Acks.

Please reach out to the maintainers *before* pushing code for other
subsystems. Unless you get an explicit ack to do so, do not push such
code.

Quoting from the committer guidelines[1] the first rule is:
"Only push patches changing drivers/gpu/drm/i915."

In those cases, please ping a maintainer and don't rush things.

Regards, Joonas

[1] https://drm.pages.freedesktop.org/maintainer-tools/committer-drm-intel.=
html#high-level-guidelines

