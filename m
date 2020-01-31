Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D266214EC1E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:57:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C4989304;
	Fri, 31 Jan 2020 11:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4441889304
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:57:50 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 03:57:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="223599439"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 31 Jan 2020 03:57:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 13:57:46 +0200
Date: Fri, 31 Jan 2020 13:57:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
Message-ID: <20200131115746.GN13686@intel.com>
References: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] RFC: pipe writeback design for i915
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2020 at 12:00:39PM +0530, Bharadiya,Pankaj wrote:
> I am exploring the way of implementing the pipe writeback feature in i915=
 and
> would like to get early feedback on design.
> =

> We have a Wireless display(WD) transcoder which can be used for capturing
> display pipe output to memory. It is generally intended for wireless disp=
lay,
> but can be used for other functions such as in validation automation wher=
e crc
> based comparison is not feasible.
> =

> Bspec: 49275
> =

> DRM core provides writeback connectors framework (drm_writeback.c) which =
can
> be used to expose hardware which can write the output from a pipe to a me=
mory
> buffer.
> =

> Writeback connectors have some additional properties, which userspace can=
 use
> to query and control them, For more details, please refer [1]
> =

> [1] https://01.org/linuxgraphics/gfx-docs/drm/gpu/drm-kms.html#writeback-=
connectors
> =

> =

> In order to implement pipe writeback feature in i915 using drm writeback
> connector framework, I am exploring below possibilities.
> =

>   1. Extend the intel_connector to support writeback
>   2. Introduce new intel_writeback_connector type
>   3. ?? (any other better way?)
> =

> 1# Extend the intel_connector to support writeback
> --------------------------------------------------
> =

> drm_writeback connector is of drm_connector type and intel_connector is a=
lso
> of drm_connector type.
> =

>   +----------------------------------------------------------------------=
-------+
>   |                                     |                                =
       |
>   | struct drm_writeback_connector {    |    struct intel_connector {    =
       |
>   |         struct drm_connector base;  |            struct drm_connector=
 base; |
>   |         .                           |            .                   =
       |
>   |         .                           |            .                   =
       |
>   |         .                           |            .                   =
       |
>   | };                                  |    };                          =
       |
>   |                                     |                                =
       |
>   +----------------------------------------------------------------------=
-------+

That's a bit unfortunate. We like to use intel_connector quite a bit in
i915 so having two different types is going to be a pita. Ideally I
guess the writeback connector shouldn't be a drm_connector at all and
instead it would just provide some kind of thing to embed into the
driver's connector struct. But that would mean the writeback helpers
would need some other way to get at that data rather than just
container_of().

-- =

Ville Syrj=E4l=E4
Intel
---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
