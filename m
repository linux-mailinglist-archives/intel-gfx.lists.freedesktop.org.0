Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4921517F3BB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 10:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9551D6E171;
	Tue, 10 Mar 2020 09:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 941276E171;
 Tue, 10 Mar 2020 09:33:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 02:33:21 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="276884445"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 02:33:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi\,
 Rodrigo" <rodrigo.vivi@intel.com>
In-Reply-To: <20200310080933.GE28483@zhen-hp.sh.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200310080933.GE28483@zhen-hp.sh.intel.com>
Date: Tue, 10 Mar 2020 11:33:17 +0200
Message-ID: <871rq0o8pu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PULL] gvt-fixes
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 intel-gvt-dev <intel-gvt-dev@lists.freedesktop.org>, "Lv, 
 Zhiyuan" <zhiyuan.lv@intel.com>, "Yuan, Hang" <hang.yuan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 10 Mar 2020, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> Hi,
>
> Here's more gvt fixes for 5.6. Fix timer issue caused by idr destroy
> change and VBT size error.

Pulled and pushed to drm-intel-fixes, thanks.

BR,
Jani.


>
> Thanks
> --
>
> The following changes since commit b549c252b1292aea959cd9b83537fcb9384a6112:
>
>   drm/i915/gvt: Fix orphan vgpu dmabuf_objs' lifetime (2020-02-25 16:14:20 +0800)
>
> are available in the Git repository at:
>
>   https://github.com/intel/gvt-linux tags/gvt-fixes-2020-03-10
>
> for you to fetch changes up to 2fa7e15c5f466fdd0c0b196b1dc4a65d191efd96:
>
>   drm/i915/gvt: Fix emulated vbt size issue (2020-03-06 09:35:30 +0800)
>
> ----------------------------------------------------------------
> gvt-fixes-2020-03-10
>
> - Fix vgpu idr destroy causing timer destroy failure (Zhenyu)
> - Fix VBT size (Tina)
>
> ----------------------------------------------------------------
> Tina Zhang (1):
>       drm/i915/gvt: Fix emulated vbt size issue
>
> Zhenyu Wang (1):
>       drm/i915/gvt: Fix unnecessary schedule timer when no vGPU exits
>
>  drivers/gpu/drm/i915/gvt/opregion.c |  5 ++---
>  drivers/gpu/drm/i915/gvt/vgpu.c     | 12 +++++++++---
>  2 files changed, 11 insertions(+), 6 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
