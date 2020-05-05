Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 579171C619B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 22:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A636E81F;
	Tue,  5 May 2020 20:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2AB66E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 20:08:06 +0000 (UTC)
IronPort-SDR: n9DtfXZq/nm3vk7VLrj9Y9WVuyXN+49hdymTcUM2i2o/Tt2kMLkaAYYI/XzvajDH3+5+JFjbx4
 FYtZzln91YYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 13:08:05 -0700
IronPort-SDR: WI1ipn8nSyHbFIifMhQhW6tWxLtUZ1ZwekfLVevjEgqZ6hX1WdIYHHIU/cF3hna++MZAHfwNON
 UkhLR3vDj2HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,356,1583222400"; d="scan'208";a="295087537"
Received: from dmclou6x-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.14.143])
 by fmsmga002.fm.intel.com with ESMTP; 05 May 2020 13:08:04 -0700
Date: Tue, 5 May 2020 23:08:03 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200505200803.GA1633@intel.intel>
References: <20200504044903.7626-1-chris@chris-wilson.co.uk>
 <20200504044903.7626-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504044903.7626-7-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/gt: Stop holding onto the
 pinned_default_state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, May 04, 2020 at 05:48:48AM +0100, Chris Wilson wrote:
> As we only restore the default context state upon banning a context, we
> only need enough of the state to run the ring and nothing more. That is
> we only need our bare protocontext.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>

I don't see any issue, looks correct to me:

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
