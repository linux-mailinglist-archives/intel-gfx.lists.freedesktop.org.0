Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3CB17352F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 11:21:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B06E76EEC3;
	Fri, 28 Feb 2020 10:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295E76EEC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 10:21:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 02:21:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,495,1574150400"; d="scan'208";a="318084899"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001.jf.intel.com with ESMTP; 28 Feb 2020 02:21:05 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1j7clU-00088d-NT; Fri, 28 Feb 2020 12:21:04 +0200
Date: Fri, 28 Feb 2020 12:21:04 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200228102104.GL3839@platvala-desk.ger.corp.intel.com>
References: <dece9669d6a9c03c1c14f4a33e1d817a7a78d78b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dece9669d6a9c03c1c14f4a33e1d817a7a78d78b.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [CI] PR for TGL DMC v2.06
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 11:42:03PM +0000, Souza, Jose wrote:
> The following changes since commit
> efcfa03ae6100dfe523ebf612e03c3a90fc4c794:
> =

>   linux-firmware: Update firmware file for Intel Bluetooth AX201 (2020-
> 02-24 07:43:42 -0500)
> =

> are available in the Git repository at:
> =

>   git://anongit.freedesktop.org/drm/drm-firmware tgl_dmc_2.06
> =

> for you to fetch changes up to
> e2396319167724e9ffddc377f300469923fccdcb:
> =

>   i915: Add DMC firmware v2.06 for TGL (2020-02-27 15:24:56 2020 -0800)
> =

> ----------------------------------------------------------------
> Jos=E9 Roberto de Souza (1):
>       i915: Add DMC firmware v2.06 for TGL
> =

>  WHENCE                  |   3 +++
>  i915/tgl_dmc_ver2_06.bin | Bin 0 -> 18660 bytes
>  2 files changed, 3 insertions(+)
>  create mode 100644 i915/tgl_dmc_ver2_06.bin


Patchwork didn't pick up this PR, I suspect the extra newlines to be
the issue. Can you try resending this without the automatic newlines
before the commit shas?

If patchwork recognizes it as a pull request, it will appear in here:
https://patchwork.freedesktop.org/api/1.0/projects/intel-gfx/events/?page=
=3D1&since=3D2020-02-20&name=3Dpull-request-new


--
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
