Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E37016A49F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 12:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E266E435;
	Mon, 24 Feb 2020 11:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D5DD888AE;
 Mon, 24 Feb 2020 11:11:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 03:11:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,479,1574150400"; d="scan'208";a="230613760"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 03:11:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>
In-Reply-To: <20200224095704.GC13783@zhen-hp.sh.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200220165507.16823-1-pankaj.laxminarayan.bharadiya@intel.com>
 <87eeulthds.fsf@intel.com> <20200224095704.GC13783@zhen-hp.sh.intel.com>
Date: Mon, 24 Feb 2020 13:11:05 +0200
Message-ID: <87mu98tf3q.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 0/8] drm: Introduce struct drm_device
 based WARN* and use them in i915
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 24 Feb 2020, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> On 2020.02.23 18:09:35 +0200, Jani Nikula wrote:
>> On Thu, 20 Feb 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
>> >   drm/i915/gvt: Make WARN* drm specific where drm_priv ptr is available
>> >   drm/i915/gvt: Make WARN* drm specific where vgpu ptr is available
>> 
>> Thanks for the patches, pushed everything except these, which are for
>> Zhenyu & Zhi.
>> 
>
> For GVT changes.
>
> Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

I assume you'll pick these up and merge via gvt tree.

BR,
Jani.

>
> Please also cc intel-gvt-dev list in future for gvt change.
>
> Thanks!

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
