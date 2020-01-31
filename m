Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8614A14EC0D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EAF6E96F;
	Fri, 31 Jan 2020 11:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617426E96F
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 11:52:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 03:52:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="247706414"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 31 Jan 2020 03:51:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 13:51:59 +0200
Date: Fri, 31 Jan 2020 13:51:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200131115159.GM13686@intel.com>
References: <20200131063038.GA15798@plaxmina-desktop.iind.intel.com>
 <87pnez99ou.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnez99ou.fsf@intel.com>
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

On Fri, Jan 31, 2020 at 12:55:45PM +0200, Jani Nikula wrote:
> On Fri, 31 Jan 2020, "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@in=
tel.com> wrote:
> > I am exploring the way of implementing the pipe writeback feature in i9=
15 and
> > would like to get early feedback on design.
> >
> > We have a Wireless display(WD) transcoder which can be used for capturi=
ng
> > display pipe output to memory. It is generally intended for wireless di=
splay,
> > but can be used for other functions such as in validation automation wh=
ere crc
> > based comparison is not feasible.
> =

> I think you should probably explore the use case and driver/igt impact
> further before embarking on the implementation.
> =

> - How much do you need to modify existing code in kernel and igt to make
>   use of writeback connectors?
> =

> - What kind of test coverage do you get? Pipe CRC is used in connection
>   with the physical encoders. In contrast, you won't have that with WD
>   transcoders. (Design wise I think this may mean you'll also need
>   "writeback encoders", instead of trying to plug it into existing
>   encoders.) So you'll only test the pipe side of things, which roughly
>   corresponds to pipe CRC coverage I guess. I guess it could speed up
>   that part of testing because you can then skip the physical
>   connectors, but you do have to test them also. So it's not a panacea.

The main benefit I'm looking forward to is for reverse engineering.
As in answwering the age old question: "let me see wtf the hw is
actually doing to my pixels?". I want this!

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
