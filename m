Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A477517C512
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 19:08:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915C56E214;
	Fri,  6 Mar 2020 18:08:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54BAC6E214;
 Fri,  6 Mar 2020 18:08:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 10:08:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,523,1574150400"; d="scan'208";a="288036825"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 06 Mar 2020 10:08:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Mar 2020 20:08:48 +0200
Date: Fri, 6 Mar 2020 20:08:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Li, Juston" <juston.li@intel.com>
Message-ID: <20200306180848.GU13686@intel.com>
References: <20200211212237.1269-1-juston.li@intel.com>
 <20200211212237.1269-2-juston.li@intel.com>
 <05dfb92dac8fa20616030e62f979e5862eb37835.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <05dfb92dac8fa20616030e62f979e5862eb37835.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v6 i-g-t 2/2] tests/kms_getfb: Add getfb2
 tests
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "daniels@collabora.com" <daniels@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 06, 2020 at 05:46:45PM +0000, Li, Juston wrote:
> On Tue, 2020-02-11 at 13:22 -0800, Juston Li wrote:
> > From: Daniel Stone <daniels@collabora.com>
> > =

> > Mirroring addfb2, add tests for the new ioctl which will return us
> > information about framebuffers containing multiple buffers, as well
> > as
> > modifiers.
> > =

> > Changes since v5:
> > - Add documentation
> > =

> > Changes since v4:
> > - Remove unnecessary bo creation for getfb2-handle-closed subtest
> > =

> > Changes since v3:
> > - Add subtests to ensure handles aren't returned for non-root and
> >   non-master callers
> > =

> > Changes since v1:
> > - Add test that uses getfb2 output to call addfb2 as suggested by
> > Ville
> > =

> > Signed-off-by: Daniel Stone <daniels@collabora.com>
> > Signed-off-by: Juston Li <juston.li@intel.com>
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Friendly nudge, can this be merged now?
> Added documentation, passing BAT now.

Pushed to master. Thanks.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
