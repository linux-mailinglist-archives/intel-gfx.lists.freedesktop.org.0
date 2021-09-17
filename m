Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC4740F8CE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 15:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3256EC7D;
	Fri, 17 Sep 2021 13:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EE6F6EC7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 13:05:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="220909025"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="220909025"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 06:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="554631814"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 17 Sep 2021 06:04:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Sep 2021 16:04:44 +0300
Date: Fri, 17 Sep 2021 16:04:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YUSSbMQKuQxQ7Ug9@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com>
 <YUIKDNuiNBPHKQ96@intel.com>
 <edd67a4450497f8d60acd147726ef7adf1641539.camel@intel.com>
 <YUNEAE86LBNdEKqD@intel.com>
 <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1fb0554d051d0c98ae7282110c6690de4619a970.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
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

On Thu, Sep 16, 2021 at 05:09:08PM +0000, Souza, Jose wrote:
> On Thu, 2021-09-16 at 16:17 +0300, Ville Syrjälä wrote:
> > On Wed, Sep 15, 2021 at 06:18:35PM +0000, Souza, Jose wrote:
> > > On Wed, 2021-09-15 at 17:58 +0300, Ville Syrjälä wrote:
> > > > On Tue, Sep 14, 2021 at 02:25:05PM -0700, José Roberto de Souza wrote:
> > > > > Not sure why but when moving the cursor fast it causes some artifacts
> > > > > of the cursor to be left in the cursor path, adding some pixels above
> > > > > the cursor to the damaged area fixes the issue, so leaving this as a
> > > > > workaround until proper fix is found.
> > > > 
> > > > Have you tried warping the cursor clear across the screen while
> > > > a partial update is already pending? I think it will go badly.
> > > 
> > > You mean move the cursor for example from 0x0 to 500x500 in one frame?
> > > It will mark as damaged the previous area and the new one.
> > 
> > Legacy cursor updates bypass all that stuff so you're not going to
> > updating the sel fetch area for the other planes.
> > 
> > > 
> > > > 
> > > > In fact I'm thinking the mailbox style legacy cursor updates are just
> > > > fundementally incompatible with partial updates since the cursor
> > > > can move outside of the already committed update region any time.
> > > > Ie. I suspect while the cursor is visible we simply can't do partial
> > > > updates.
> > > 
> > > Probably I did not understand what you want to say, but each cursor update will be in one frame, updating the necessary area.
> > 
> > The legacy cursor uses mailbox updates so there is no 1:1 relationship
> > between actual scanned out frames and cursor ioctl calls. You can
> > have umpteen thousand cursor updates per frame.
> 
> Not if intel_legacy_cursor_update() is changed to go to the slow path and do one atomic commit for each move.
> https://patchwork.freedesktop.org/patch/453192/?series=94522&rev=1

That's not going to fly. The whole reason for the legacy cursor thing is
that X likes to do thousands of cursor updates per frame.

> 
> I believe compositors will do a single atomic commit updating cursor and all the other planes into a single commit.

No. X obviously doesn't do that. And IIRC chromeos also uses the
legacy cursor ioctl for the cursor despite using atomic commits for
everything else.

-- 
Ville Syrjälä
Intel
