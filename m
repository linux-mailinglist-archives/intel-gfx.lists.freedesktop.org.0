Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABFA14DC5E
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 14:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6696E843;
	Thu, 30 Jan 2020 13:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AB86F9BF
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 13:58:17 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 05:58:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="218285150"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Jan 2020 05:58:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jan 2020 15:58:13 +0200
Date: Thu, 30 Jan 2020 15:58:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200130135813.GB13686@intel.com>
References: <20200129235900.7670-1-daniele.ceraolospurio@intel.com>
 <158036696815.21034.751097000968180593@emeril.freedesktop.org>
 <158039146921.16598.16786857738481185551@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158039146921.16598.16786857738481185551@skylake-alporthouse-com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_extract_engine_WA_progr?=
 =?utf-8?q?amming_to_common_resume_function?=
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

On Thu, Jan 30, 2020 at 01:37:49PM +0000, Chris Wilson wrote:
> Quoting Patchwork (2020-01-30 06:49:28)
> > #### Possible regressions ####
> > =

> >   * igt@i915_selftest@live_active:
> >     - fi-bwr-2160:        [PASS][1] -> [DMESG-WARN][2] +12 similar issu=
es
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7840/fi-bwr-216=
0/igt@i915_selftest@live_active.html
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16327/fi-bwr=
-2160/igt@i915_selftest@live_active.html
> =

> Well it works on Crestline. Broadwater snafu?

Does the w/a thing actually work correctly for masked registers?
It look to use rmw even for masked registers and IIRC some masked
registers return 0xffff for the mask when read. I lost track of the
values and masks being passed around before I got down that deep so
can't immediatly see if the code is guaranteed to set only the
expected mask bit(s) for the write.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
