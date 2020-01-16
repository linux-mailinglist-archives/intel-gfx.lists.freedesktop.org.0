Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2953F13E13B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 17:48:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7CE6EDE6;
	Thu, 16 Jan 2020 16:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A43A6EDE6;
 Thu, 16 Jan 2020 16:48:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 08:48:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="218595443"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 16 Jan 2020 08:48:35 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E65295C1DF1; Thu, 16 Jan 2020 18:47:58 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: akeem.g.abodunrin@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, omer.aran@intel.com,
 pragyansri.pathi@intel.com, d.scott.phillips@intel.com,
 david.c.stewart@intel.com, tony.luck@intel.com, jon.bloomfield@intel.com,
 sudeep.dutt@intel.com, daniel.vetter@intel.com, joonas.lahtinen@intel.com,
 jani.nikula@intel.com, chris.p.wilson@intel.com
In-Reply-To: <20200116161601.26110-1-mika.kuoppala@linux.intel.com>
References: <20200114174549.74643-2-akeem.g.abodunrin@intel.com>
 <20200116161601.26110-1-mika.kuoppala@linux.intel.com>
Date: Thu, 16 Jan 2020 18:47:58 +0200
Message-ID: <877e1rqrep.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add mechanism to submit a
 context WA on ring submission
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Mika Kuoppala <mika.kuoppala@linux.intel.com> writes:

>Subject: Re: [PATCH 1/2] drm/i915: Add mechanism to submit a context WA
>on ring submission

I forgot to add RFC into patch subject. This should carry
the RFC status as it is v2 on a RFC patch.

This patch squashes Chris Wilson's ctx switch optimization
and the development is still continuing.

-Mika
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
