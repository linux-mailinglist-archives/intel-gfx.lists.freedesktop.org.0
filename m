Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A5D371E19
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 19:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3C76E3F2;
	Mon,  3 May 2021 17:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDC76E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 17:11:00 +0000 (UTC)
IronPort-SDR: UwDHvuwIsTBYShmGVMUwgG0dqTfwb+cQhdO+e/nU0i3SFIHH1rmWpeZyJO7cPWzkYW5BclpjEv
 x7LO6qrz36Hg==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="218585285"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="218585285"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:10:44 -0700
IronPort-SDR: Y15+UH0xaptjRshlfWgFjPSrOaBx6o6rnFL0BOe6Rbkt92AMPEP5bZ1Mh49uGhfl6X7BRDg5Wb
 dno2OF5b+FTQ==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="468140585"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:10:42 -0700
Date: Mon, 3 May 2021 20:10:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20210503171038.GF4190280@ideak-desk.fi.intel.com>
References: <20210503164001.GE4190280@ideak-desk.fi.intel.com>
 <YJAql6Vstj7wY5Wg@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YJAql6Vstj7wY5Wg@kroah.com>
Subject: Re: [Intel-gfx] drm/i915: v5.11 stable backport request
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Mario =?iso-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 03, 2021 at 06:53:43PM +0200, Greg KH wrote:
> On Mon, May 03, 2021 at 07:40:01PM +0300, Imre Deak wrote:
> > Stable team, please backport the upstream commits
> > =

> > 7962893ecb85 ("drm/i915: Disable runtime power management during shutdo=
wn")
> > =

> > to the v5.11 stable kernel, they fix a system shutdown failure.
> > =

> > References: https://lore.kernel.org/intel-gfx/042237f49ed1fd719126a3407=
d7c909e49addbea.camel@gmx.net
> > Reported-and-tested-by: Mario H=FCttel <mario.huettel@gmx.net>
> =

> You also need this in 5.12.y, right?

Yes missed that, thanks for catching it.

> thanks,
> =

> greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
