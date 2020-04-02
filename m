Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E0E19C326
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 15:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819186EA8F;
	Thu,  2 Apr 2020 13:52:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3228D6EA8F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 13:52:06 +0000 (UTC)
IronPort-SDR: FO/QvmzRZeMNNyNqpM6zf81JHx0+S6Cj0cAy96rbq2JM4xTbGISSTMNDQYJEFbbfFuGm69HLJv
 BxaY8nRzJTvg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 06:52:05 -0700
IronPort-SDR: gu90V5fKQ1jEMgfpYhdFjTO84yNiywf2TnCsKvRIC/ZTxpeykz3+EzWz2Zl/hqAQ63Ec4vXpoG
 mYqyhxuJsoeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="360199836"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 02 Apr 2020 06:52:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 16:52:03 +0300
Date: Thu, 2 Apr 2020 16:52:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Giacomo Comes <comes@naic.edu>
Message-ID: <20200402135203.GV13686@intel.com>
References: <20200401225317.GA13834@monopoli.naic.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401225317.GA13834@monopoli.naic.edu>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] kernel 5.6: baytrail hdmi audio not working
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 01, 2020 at 06:53:17PM -0400, Giacomo Comes wrote:
> Hi,
> on my Intel Compute Stick STCK1 (baytrail hdmi audio) =

> sound is not working with the kernel 5.6
> =

> I have bisected the kernel and I found the commit that introduced the iss=
ue:
> =

> commit 58d124ea2739e1440ddd743d46c470fe724aca9a
> Author: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Date:   Thu Oct 31 12:26:04 2019 +0100
> =

>     drm/i915: Complete crtc hw/uapi split, v6.
>     =

>     Now that we separated everything into uapi and hw, it's
>     time to make the split definitive. Remove the union and
>     make a copy of the hw state on modeset and fastset.
>     =

>     Color blobs are copied in crtc atomic_check(), right
>     before color management is checked.
> =

> If more information is required please let me know.

Should hopefully be fixed with
commit 2bdd4c28baff ("drm/i915/display: Fix mode private_flags
comparison at atomic_check")

Stable folks, please pick that up for 5.6.x stable releases.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
