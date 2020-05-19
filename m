Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B32561D8C01
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 02:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A256E21D;
	Tue, 19 May 2020 00:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF216E21D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 00:05:05 +0000 (UTC)
IronPort-SDR: wMHfo2Lc1lVwtwVRQrYs85ATVQkCmqpdbVWDA4pN7mDXdHDrcLRYZ4s4aM+PdZ6tFGl4Vs90Lv
 us/QQgLLKGLw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 17:05:04 -0700
IronPort-SDR: pjWzAfHiddcTvTILw9C9ONfY2tFHGZamsoQG0rRWZ9FgdYR51SC55VJRBfAOr8kuxFjhnoETR2
 PWEn1+iWmtKg==
X-IronPort-AV: E=Sophos;i="5.73,408,1583222400"; d="scan'208";a="465770421"
Received: from hyalamat-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.40.114])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 17:05:04 -0700
Date: Mon, 18 May 2020 17:05:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200519000503.vdnambevshqueytl@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20200518233049.19759-1-lucas.demarchi@intel.com>
 <20200518233049.19759-2-lucas.demarchi@intel.com>
 <158984490283.30033.8938623497603666915@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158984490283.30033.8938623497603666915@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: trace intel_uncore_*_fw()
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 19, 2020 at 12:35:02AM +0100, Chris Wilson wrote:
>Quoting Lucas De Marchi (2020-05-19 00:30:49)
>> Now that we have the declaration of trace_i915_reg_rw() in a separate
>> header, start tracing intel_uncore_*_fw() mmio-accessors.
>
>These were untraced on purpose.

humn... can you share why? I didn't find the purpose of being untraced
anywhere.

Right now I'm debugging the WA initialization and found it helpful to be
able to trace them - https://gitlab.freedesktop.org/drm/intel/-/issues/1222#note_503179

thanks
Lucas De Marchi

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
