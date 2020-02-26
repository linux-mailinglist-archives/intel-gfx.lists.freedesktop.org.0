Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE540170AF8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 23:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60C06EBDB;
	Wed, 26 Feb 2020 22:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7406E4E3;
 Wed, 26 Feb 2020 22:00:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 14:00:02 -0800
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="231560983"
Received: from talten-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.151])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:59:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi\,
 Rodrigo" <rodrigo.vivi@intel.com>
In-Reply-To: <20200226103016.GC10413@zhen-hp.sh.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200226103016.GC10413@zhen-hp.sh.intel.com>
Date: Thu, 27 Feb 2020 00:00:18 +0200
Message-ID: <87d0a1roul.fsf@intel.com>
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

On Wed, 26 Feb 2020, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> Hi,
>
> Here's gvt-fixes for 5.6-rc with two fixes. One to resolve virtual
> display reset and another one for use-after-free in dmabuf destroy
> function.

Pulled, thanks.

BR,
Jani.

>
> Thanks
> --
> The following changes since commit 0e9d7bb293f3f9c3ee376b126141407efb265f31:
>
>   drm/i915/gvt: more locking for ppgtt mm LRU list (2020-02-10 10:04:34 +0800)
>
> are available in the Git repository at:
>
>   https://github.com/intel/gvt-linux tags/gvt-fixes-2020-02-26
>
> for you to fetch changes up to b549c252b1292aea959cd9b83537fcb9384a6112:
>
>   drm/i915/gvt: Fix orphan vgpu dmabuf_objs' lifetime (2020-02-25 16:14:20 +0800)
>
> ----------------------------------------------------------------
> gvt-fixes-2020-02-26
>
> - Fix virtual display reset (Tina)
> - Fix one use-after-free for dmabuf (Tina)
>
> ----------------------------------------------------------------
> Tina Zhang (2):
>       drm/i915/gvt: Separate display reset from ALL_ENGINES reset
>       drm/i915/gvt: Fix orphan vgpu dmabuf_objs' lifetime
>
>  drivers/gpu/drm/i915/gvt/dmabuf.c | 2 +-
>  drivers/gpu/drm/i915/gvt/vgpu.c   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
